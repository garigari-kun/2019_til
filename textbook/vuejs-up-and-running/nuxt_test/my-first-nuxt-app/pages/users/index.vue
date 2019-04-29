<template>
  <div>
    <p>
      /users/index.vue
    </p>
  </div>
</template>

<script>
export default {
  async mounted() {
    console.log(
      JSON.stringify(await
        this.$axios.$get('http://qiita.com/api/v2/items?quiery=tag:nuxt.js'),
        true,
        ' '
      )
    )
  }
}
</script>
