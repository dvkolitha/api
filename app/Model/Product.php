<?php

namespace App\Model;

use App\Model\Product;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    publick function reviews()
    {
    	return $this->hasMany(Product::class);
    }
}
