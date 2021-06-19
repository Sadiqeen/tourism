<?php

namespace App\Http\Controllers;

use App\Hostel;
use App\Province;
use Illuminate\Http\Request;

class HostelController extends Controller
{
    public function Index()
    {
        $hostels = Hostel::orderBy('created_at', 'desc')->paginate(12);

        return view('hostel.index', [
            'hostels' => $hostels
        ]);
    }

    public function Show(Hostel $hostel)
    {
        return view('hostel.show', [
            'hostel' => $hostel
        ]);
    }

    public function Province(Province $province)
    {
        $hostels = Hostel::where('province_id', $province->id)->paginate(12);

        return view('hostel.province', [
            'province' => $province,
            'hostels' => $hostels
        ]);
    }
}
