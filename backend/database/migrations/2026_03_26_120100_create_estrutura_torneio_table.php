<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('torneios', function (Blueprint $table) {
            $table->id();
            $table->string('nome');
            $table->string('edicao');
            $table->string('status')->default('rascunho');
            $table->timestamp('data_inicio')->nullable();
            $table->timestamp('data_fim')->nullable();
            $table->timestamps();
        });

        Schema::create('grupos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->string('nome');
            $table->unsignedTinyInteger('ordem');
            $table->timestamps();
            $table->unique(['torneio_id', 'nome']);
        });

        Schema::create('selecoes', function (Blueprint $table) {
            $table->id();
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->foreignId('grupo_id')->nullable()->constrained('grupos')->nullOnDelete();
            $table->string('nome');
            $table->string('sigla', 3);
            $table->string('slug');
            $table->boolean('ativo')->default(true);
            $table->timestamps();
            $table->unique(['torneio_id', 'sigla']);
            $table->unique(['torneio_id', 'slug']);
        });

        Schema::create('jogadores', function (Blueprint $table) {
            $table->id();
            $table->foreignId('selecao_id')->constrained('selecoes')->cascadeOnDelete();
            $table->string('nome');
            $table->string('apelido')->nullable();
            $table->string('posicao')->nullable();
            $table->unsignedTinyInteger('numero_camisa')->nullable();
            $table->boolean('ativo')->default(true);
            $table->timestamps();
        });

        Schema::create('fases', function (Blueprint $table) {
            $table->id();
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->string('nome');
            $table->string('slug');
            $table->unsignedTinyInteger('ordem');
            $table->string('tipo');
            $table->timestamp('data_fechamento')->nullable();
            $table->timestamps();
            $table->unique(['torneio_id', 'slug']);
        });

        Schema::create('rodadas', function (Blueprint $table) {
            $table->id();
            $table->foreignId('fase_id')->constrained('fases')->cascadeOnDelete();
            $table->string('nome');
            $table->unsignedTinyInteger('ordem');
            $table->timestamp('data_fechamento')->nullable();
            $table->timestamps();
        });

        Schema::create('jogos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('torneio_id')->constrained('torneios')->cascadeOnDelete();
            $table->foreignId('fase_id')->constrained('fases')->cascadeOnDelete();
            $table->foreignId('rodada_id')->nullable()->constrained('rodadas')->nullOnDelete();
            $table->foreignId('grupo_id')->nullable()->constrained('grupos')->nullOnDelete();
            $table->foreignId('selecao_mandante_id')->constrained('selecoes')->restrictOnDelete();
            $table->foreignId('selecao_visitante_id')->constrained('selecoes')->restrictOnDelete();
            $table->timestamp('data_hora_inicio');
            $table->unsignedSmallInteger('ordem_na_fase')->default(1);
            $table->string('status')->default('agendado');
            $table->timestamps();
        });

        Schema::create('resultados_jogos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('jogo_id')->unique()->constrained('jogos')->cascadeOnDelete();
            $table->unsignedTinyInteger('placar_mandante')->nullable();
            $table->unsignedTinyInteger('placar_visitante')->nullable();
            $table->foreignId('selecao_classificada_id')->nullable()->constrained('selecoes')->nullOnDelete();
            $table->timestamp('encerrado_at')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('resultados_jogos');
        Schema::dropIfExists('jogos');
        Schema::dropIfExists('rodadas');
        Schema::dropIfExists('fases');
        Schema::dropIfExists('jogadores');
        Schema::dropIfExists('selecoes');
        Schema::dropIfExists('grupos');
        Schema::dropIfExists('torneios');
    }
};
