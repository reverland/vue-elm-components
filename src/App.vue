<template>
  <div class="app">
    <elm :src="ElmButton"></elm>
  </div>
</template>

<script>
import ElmButton from './elm/Button.elm'
import Elm from './components/Elm'

export default {
  name: 'App',
  components: {
    Elm
  },
  data () {
    return {
      ElmButton: ElmButton
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
