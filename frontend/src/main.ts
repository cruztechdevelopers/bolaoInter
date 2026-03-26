import { createApp } from 'vue'
import { createPinia } from 'pinia'

import App from './App.vue'
import { roteador } from './router'
import './style.css'

createApp(App).use(createPinia()).use(roteador).mount('#app')
