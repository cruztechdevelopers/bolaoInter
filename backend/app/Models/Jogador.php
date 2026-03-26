<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Jogador extends Model
{
    protected $table = 'jogadores';

    protected $fillable = [
        'selecao_id',
        'nome',
        'apelido',
        'posicao',
        'numero_camisa',
        'ativo',
    ];

    protected function casts(): array
    {
        return [
            'ativo' => 'boolean',
        ];
    }

    public function selecao(): BelongsTo
    {
        return $this->belongsTo(Selecao::class, 'selecao_id');
    }
}
