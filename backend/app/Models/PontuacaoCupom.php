<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PontuacaoCupom extends Model
{
    protected $table = 'pontuacoes_cupons';

    protected $fillable = [
        'cupom_id',
        'pontuacao_total',
        'quantidade_placares_exatos',
        'quantidade_classificados_corretos',
        'quantidade_palpites_finais_corretos',
        'ultimo_recalculo_at',
    ];

    protected function casts(): array
    {
        return [
            'pontuacao_total' => 'decimal:2',
            'ultimo_recalculo_at' => 'datetime',
        ];
    }

    public function cupom(): BelongsTo
    {
        return $this->belongsTo(Cupom::class, 'cupom_id');
    }
}
