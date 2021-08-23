<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Hash;
use Auth;
use Session;
use App\Admin;
use Image;

class AdminController extends Controller
{
    //
    public function dashboard(){
        Session::put('page', 'dashboard');
        return view('admin.admin_dashboard');
    }

    public function settings(){
        Session::put('page', 'settings');
        // echo "<pre>"; print_r(Auth::guard('admin')->user()); die;
        // Auth::guard('admin')->user()->id;
        $adminDetails = Admin::where('email', Auth::guard('admin')->user()->email)->first();
        return view('admin.admin_settings')->with(compact('adminDetails'));
    }

    public function login(Request $request){
        // echo $password= Hash::make('123456'); die;
        if($request->isMethod('post')){
            $data= $request->all();
            // echo "<pre>"; print_r($data); die;

            // $validatedData = $request->validate([
            //     'email'=> 'required|email|max:255',
            //     'password' => 'required',
            // ]);

            $rules = [
                'email'=> 'required|email|max:255',
                 'password' => 'required',
            ];
            
            $customMessages = [
                'email.required' =>  'Email Address is required', 
                'email.email' => 'Valid Email is required',
                'password.required'=> 'Password is required',
            ];

            $this->validate($request, $rules, $customMessages);
            

            if(Auth::guard('admin')->attempt(['email'=> $data['email'], 'password'=>$data['password'], 'status' => 1])){
                return redirect('admin/dashboard');
            }else{
                Session::flash('error_message', 'Invalid Email or Password');
                return redirect()->back();
            }
        }
        return view('admin.admin_login');
    }

    public function logout(){
        Auth::guard('admin')->logout();
        return redirect('/admin');
    }

    public function chkCurrentPassword(Request $request){
        $data = $request->all();
        // echo "<pre>"; print_r($data); die;
        // echo Auth::guard('admin')->user()->password(); die;
        // echo "<pre>"; print_r(Auth::guard('admin')->user()->password); die;
        if(Hash::check($data['current_pwd'], Auth::guard('admin')->user()->password)){
            echo "true";
        }else{
            echo "false";
        }
    }

    public function updateCurrentPassword(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>"; print_r($data); die;
            if(Hash::check($data['current_pwd'], Auth::guard('admin')->user()->password)){
                // Check if current password is correct
                // Check if new and confirm password is matching
                if($data['new_pwd'] == $data['confirm_pwd']){
                    Admin::where('id', Auth::guard('admin')->user()->id)->update(['password'=>bcrypt($data['new_pwd'])]);
                    Session::flash('success_message', 'Password has been updated successfully');

                }else{
                    Session::flash('error_message', 'New Password and Confirm Password does not match');
                }
            }else{
                Session::flash('error_message', 'Your current password is incorrect');
                return redirect()->back();
            }
            return redirect()->back(); 
        }
    }

    public function updateAdminDetails(Request $request){
        Session::put('page', 'update-admin-details');
        if($request->isMethod('post')){
            $data = $request->all();
            // echo "<pre>"; print_r($data); die;
            $rules = [
                'admin_name'=> 'required|regex:/^[\pL\s-]+$/u',
                'admin_mobile' => 'required|numeric',
                'admin_image'=> 'image'
            ];
            $customMessages = [
                'admin_name.required' => 'Name is required',
                'admin_name.alpha' => 'Valid Name is required',
                'admin_mobile.required' => 'Mobile is required',
                'admin_mobile.numeric' => 'Valid Mobile is requird',
                'admin_image.image' => 'Valid Image is required'
            ];
            
            $this->validate($request, $rules, $customMessages);

            //Upload image
            if($request->hasFile('admin_image')){
                $image_tmp = $request->file('admin_image');
                if($image_tmp->isValid()){
                    // Get Image Extension
                    $extension = $image_tmp->getClientOriginalExtension();
                    // Generate New Image Name
                    $imageName = rand(111, 99999). '.'. $extension;
                    $imagePath = 'images/admin_images/admin_photos/'.$imageName;
                    
                    // Upload the image 
                    // Image::make($image_tmp)->save($imagePath);

                    // Resize Image 
                    Image::make($image_tmp)->resize(300, 400)->save($imagePath);
                }else if(!empty($data['current_admin_image'])){
                    $imageName = $data['current_admin_image'];
                }else{
                    $imageName= "";
                }
            }

            // Update Admin Details 
            Admin::where('email', Auth::guard('admin')->user()->email)->update(['name' => $data['admin_name'], 'mobile' => $data['admin_mobile'], 'image'=>$imageName]);
            session::flash('success_message', 'Admin details updated successfully');
            return redirect()->back();
        }
        return view('admin.update_admin_details');
    }

    public function adminsSubadmins(){
        //This works with the left sidebar
        if(Auth::guard('admin')->user()->type=="subadmin"){
            Session::flash('error_message', 'This feature is resricted');
            return redirect('admin/dashboard');
        }
        Session::put('page', 'admins_subadmins');
        $admins_subadmins = Admin::get();
        return view('admin.admins_subadmins.admins_subadmins')->with(compact('admins_subadmins'));
    }

    public function updateAdminStatus(Request $request){
        if($request->ajax()){
            $data= $request->all();
            // echo "<pre>"; print_r($data); die;
            if($data['status'] == "Active"){
                $status= 0;
            }else{
                $status = 1;
            }

            Admin::where('id', $data['admin_id'])->update(['status'=>$status]);
            return response()->json(['status'=>$status, 'admin_id'=> $data['admin_id']]);
        }
    }

    public function deleteAdminSubAdmin($id){
        // Delete Admin Sub Admin
        Admin::where('id', $id)->delete();
        $message = "Admin/Sub-Admin has been deleted Successfully";
        Session::flash('success_message',$message);
        return redirect()->back();
    }
}
