<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    public $timestamps = false;

    static $rules = [
		'descriptions' => 'required',
		'justify' => 'required',
		'image' => 'image|mimes:jpg,jpeg,png,gif,svg|max:2048',
		'quiz_id' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['descriptions','justify','image','quiz_id'];


    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function answers()
    {
        return $this->hasMany('App\Models\Answer', 'question_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function quiz()
    {
        return $this->hasOne('App\Models\Quiz', 'id', 'quiz_id');
    }

}
