<?php

namespace App\Model;

use App\Model\Review;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    publick function product()
    {
    	return $this->belongsTo(Review::class);
    }
}
