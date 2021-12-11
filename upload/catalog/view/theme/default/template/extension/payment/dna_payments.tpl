<?php if ($result == 'failure') { ?>
  <div class="alert alert-danger alert-dismissible">
    <i class="fa fa-exclamation-circle"></i> 
    <?php foreach($messages as $message): ?>
      <div><?php echo $message; ?></div>
    <?php endforeach; ?>
    <button type="button" class="close" data-dismiss="alert">×</button>
  </div>
<?php } else { ?>
  <div class="buttons">
    <div class="pull-right">
      <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" data-text="<?php echo $button_confirm; ?>" data-loading-text="<?php echo $text_loading; ?>" />
    </div>
  </div>
<?php } ?>

<script>
  var isTestMode = <?php echo json_encode($isTestMode) ?>;
  var isFullRedirect = <?php echo json_encode($isFullRedirect) ?>;
  var paymentData = <?php echo json_encode($paymentData) ?>;

  $('#button-confirm').button('loading');

  let script = document.createElement('script');
  script.src = "https://pay.dnapayments.com/checkout/payment-api.js";
  document.head.append(script);

  script.onload = function() {
    $('#button-confirm').button('reset');
  };

  function pay() {
    $('#button-confirm').button('reset');

    window.DNAPayments.configure({
      isTestMode: isTestMode,
    });

    if (isFullRedirect) {
      window.DNAPayments.openPaymentPage(paymentData);
    } else {
      window.DNAPayments.openPaymentIframeWidget(paymentData);
    }
  }

  $('#button-confirm').on('click', function() {
    $.ajax({
      type: 'get',
      url: 'index.php?route=extension/payment/dna_payments/confirm',
      cache: false,
      beforeSend: function() {
        $('#button-confirm').button('loading');
      },
      success: function() {
        pay();
      }
    });
  });
</script>
