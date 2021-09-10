<?php

namespace App\Http\Controllers\Admin;

use App\Currency;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CurrencyController extends Controller
{
    public function currencies(){
        Session::put('page', 'currencies');
        $currencies = Currency::get();
        return view('admin.currencies.currencies')->with(compact('currencies'));
    }

    public function updateCurrencyStatus(Request $request){
        if($request->ajax()){
            $data= $request->all();
            // echo "<pre>"; print_r($data); die;
            if($data['status'] == "Active"){
                $status= 0;
            }else{
                $status = 1;
            }

            Currency::where('id', $data['currency_id'])->update(['status'=>$status]);
            return response()->json(['status'=>$status, 'currency_id'=> $data['currency_id']]);
        }
    }
}
