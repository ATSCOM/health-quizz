<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
  use HasFactory;

  protected $fillable = ['description'];
  protected $timestemap = false;

  public function question(){
    return $this->hasMany(Question::class);
  }
}
