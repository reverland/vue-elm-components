<template>
  <div class="elm">
  </div>
</template>

<script>
export default {
  name: 'Elm',
  props: {
    src: {
      type: Object
    },
    flags: {
      type: Object
    },
    ports: {
      type: Function
    }
  },
  mounted: function () {
    var app = this.src.Main.embed(this.$el, this.flags)

    if (typeof this.ports !== 'undefined') {
      this.ports(app.ports)
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
