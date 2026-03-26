<template>
  <div class="aplicacao">
    <header class="topo">
      <div>
        <p class="marca">Inter World Cup</p>
        <h1>Bolão da Copa com cupons independentes</h1>
      </div>

      <nav class="navegacao">
        <RouterLink to="/">Início</RouterLink>
        <RouterLink to="/entrar">Entrar</RouterLink>
        <RouterLink to="/painel">Painel</RouterLink>
        <RouterLink to="/admin">Admin</RouterLink>
      </nav>
    </header>

    <main class="conteudo">
      <RouterView />
    </main>
  </div>
</template>

<script setup lang="ts">
</script>
