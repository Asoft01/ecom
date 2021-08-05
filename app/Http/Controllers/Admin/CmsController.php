<?php

namespace App\Http\Controllers\Admin;

use App\CmsPage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CmsController extends Controller
{
    public function cmsPages(){
        // $cms_pages = CmsPage::get()->toArray();
        $cms_pages = CmsPage::get();
        // dd($cms_pages); die;
        return view('admin.pages.cms_pages')->with(compact('cms_pages'));
    }

    public function updateCmsPageStatus(Request $request){
        if($request->ajax()){
            $data= $request->all();
            // echo "<pre>"; print_r($data); die;
            if($data['status'] == "Active"){
                $status= 0;
            }else{
                $status = 1;
            }

            CmsPage::where('id', $data['page_id'])->update(['status'=>$status]);
            return response()->json(['status'=>$status, 'page_id'=> $data['page_id']]);
        }
    }
}
