$(document).ready( function() {
  $('a.delete').click( function() {
    if ( confirm("Are you sure?") ) {
      var href = $(this).attr('href');
      $.ajax({ type: 'delete', url: href,
        success: function() { window.location = '/entries'; }
      });
    }
    // Stop the browser from processing the click.
    return false;
  });
});
