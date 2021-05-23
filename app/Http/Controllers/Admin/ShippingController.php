<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\ShippingCharge;
use Session;

class ShippingController extends Controller
{
    //
    public function viewShippingCharges(){
        Session::put('page', 'shipping_charges');
        $shipping_charges = ShippingCharge::get()->toArray();
        // dd($shipping_charges);die;
        return view('admin.shipping.view_shipping_charges')->with(compact('shipping_charges'));
    }
}
