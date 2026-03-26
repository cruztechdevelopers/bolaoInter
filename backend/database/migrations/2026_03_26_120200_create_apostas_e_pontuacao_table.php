<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('regras_pontuacao', function (Blueprint $table) {
            $table->id();
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->foreignId('fase_id')->nullable()->constrained('fases')->nullOnDelete();
            $table->string('chave');
            $table->string('nome');
            $table->text('descricao')->nullable();
            $table->integer('pontos');
            $table->boolean('ativo')->default(true);
            $table->timestamps();
            $table->unique(['torneio_id', 'fase_id', 'chave'], 'regras_pontuacao_unica');
        });

        Schema::create('apostas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cupom_id')->constrained('cupons')->cascadeOnDelete();
            $table->string('tipo');
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->foreignId('fase_id')->nullable()->constrained('fases')->nullOnDelete();
            $table->foreignId('rodada_id')->nullable()->constrained('rodadas')->nullOnDelete();
            $table->foreignId('grupo_id')->nullable()->constrained('grupos')->nullOnDelete();
            $table->foreignId('jogo_id')->nullable()->constrained('jogos')->nullOnDelete();
            $table->foreignId('selecao_id')->nullable()->constrained('selecoes')->nullOnDelete();
            $table->foreignId('jogador_id')->nullable()->constrained('jogadores')->nullOnDelete();
            $table->json('conteudo');
            $table->timestamps();
        });

        Schema::create('logs_apostas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cupom_id')->constrained('cupons')->cascadeOnDelete();
            $table->foreignId('aposta_id')->nullable()->constrained('apostas')->nullOnDelete();
            $table->foreignId('usuario_id')->constrained('usuarios')->cascadeOnDelete();
            $table->string('acao');
            $table->json('conteudo_anterior')->nullable();
            $table->json('conteudo_novo')->nullable();
            $table->timestamp('created_at')->useCurrent();
        });

        Schema::create('eventos_pontuacao', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cupom_id')->constrained('cupons')->cascadeOnDelete();
            $table->foreignId('regra_pontuacao_id')->constrained('regras_pontuacao')->cascadeOnDelete();
            $table->foreignId('jogo_id')->nullable()->constrained('jogos')->nullOnDelete();
            $table->foreignId('aposta_id')->nullable()->constrained('apostas')->nullOnDelete();
            $table->integer('pontos');
            $table->string('descricao');
            $table->timestamps();
        });

        Schema::create('pontuacoes_cupons', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cupom_id')->unique()->constrained('cupons')->cascadeOnDelete();
            $table->decimal('pontuacao_total', 10, 2)->default(0);
            $table->unsignedInteger('quantidade_placares_exatos')->default(0);
            $table->unsignedInteger('quantidade_classificados_corretos')->default(0);
            $table->unsignedInteger('quantidade_palpites_finais_corretos')->default(0);
            $table->timestamp('ultimo_recalculo_at')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pontuacoes_cupons');
        Schema::dropIfExists('eventos_pontuacao');
        Schema::dropIfExists('logs_apostas');
        Schema::dropIfExists('apostas');
        Schema::dropIfExists('regras_pontuacao');
    }
};
