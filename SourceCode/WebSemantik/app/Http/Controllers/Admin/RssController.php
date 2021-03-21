<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class RssController extends Controller
{
    public function tribun()
    {
        $tribun = simplexml_load_file("http://www.tribunnews.com/rss");
        return view('admin.rss.tribun',["tribuns"=>$tribun]);
    }

    public function sindonews()
    {
        $sindonews = simplexml_load_file("https://www.sindonews.com/feed");
        return view('admin.rss.sindonews',["sindonews"=>$sindonews]);
    }
}
