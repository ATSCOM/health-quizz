<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    use HasFactory;

    static $rules = [
		'descriptions' => 'required',
		'justify' => 'required',
		'quiz_id' => 'required',
    ];

    protected $fillable = ['descriptions','justify','quiz_id'];
    public $timestamps = false;

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
    public function category()
    {
        return $this->hasOne('App\Models\Quiz', 'id', 'quiz_id');
    }

}
