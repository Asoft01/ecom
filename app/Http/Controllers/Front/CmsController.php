<?php

namespace App\Http\Controllers\Front;

use App\CmsPage;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

class CmsController extends Controller
{
    public function cmsPage(){
        // echo $currentRoute = Route::getFacadeRoot()->current()->url(); die;
        // echo $currentRoute = url()->current(); die;
        $currentRoute = url()->current(); 
        // echo $currentRoute = str_replace("http://localhost:3000/", "", $currentRoute); 
        // echo $currentRoute = str_replace("http://127.0.0.1:3000/", "", $currentRoute); 
        $currentRoute = str_replace("http://127.0.0.1:3000/", "", $currentRoute);
        $cmsRoute = CmsPage::where('status', 1)->get()->pluck('url')->toArray();
        // dd($cmsRoute); die;

        if(in_array($currentRoute, $cmsRoute)){
            $cmsPageDetails = CmsPage::where('url', $currentRoute)->first()->toArray();
            return view('front.pages.cms_page')->with(compact('cmsPageDetails'));
        }else{
            abort(404);
        }
    }
}
