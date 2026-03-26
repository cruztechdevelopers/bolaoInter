<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Grupo extends Model
{
    protected $table = 'grupos';

    protected $fillable = [
        'torneio_id',
        'nome',
        'ordem',
    ];

    public function torneio(): BelongsTo
    {
        return $this->belongsTo(Torneio::class, 'torneio_id');
    }

    public function selecoes(): HasMany
    {
        return $this->hasMany(Selecao::class, 'grupo_id');
    }

    public function jogos(): HasMany
    {
        return $this->hasMany(Jogo::class, 'grupo_id');
    }
}
