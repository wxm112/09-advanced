var whisper = whisper || {}

whisper.AppView = Backbone.View.extend({
  el: '#main',
  // Render the app view itself
  render: function () {
    var html = $('#appView').html();
    this.$el.html(html);
    // Within the app view, render the new secret form.
    var newSecretView = new whisper.NewSecretView();
    newSecretView.render();
    // Also within the app view, 
    var secretsView = new whisper.SecretsView({collection: whisper.secrets});
    secretsView.render();
  }
});