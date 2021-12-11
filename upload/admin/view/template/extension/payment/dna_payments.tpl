<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-dna_payments" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-dna_payments" class="form-horizontal">

          <!-- Client ID -->
          <div class="form-group<?php echo (!$dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_client_id">
              <?php echo $entry_client_id; ?>
              <span data-toggle="tooltip" title="<?php echo $help_client_id; ?>"></span>
            </label>
            <div class="col-sm-10">
              <input type="text" name="dna_payments_client_id"
                     value="<?php echo $dna_payments_client_id; ?>"
                     placeholder="<?php echo $entry_client_id; ?>"
                     id="dna_payments_client_id"
                     class="form-control"/>
              <?php if ($error_client_id) { ?>
              <div class="text-danger"><?php echo $error_client_id; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Client secret -->
          <div class="form-group<?php echo (!$dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_client_secret">
              <?php echo $entry_client_secret; ?>
              <span data-toggle="tooltip" title="<?php echo $help_client_secret; ?>"></span>
            </label>
            <div class="col-sm-10">
              <textarea name="dna_payments_client_secret"
                        id="dna_payments_client_secret"
                        rows="5"
                        class="form-control"><?php echo $dna_payments_client_secret; ?></textarea>
              <?php if ($error_client_secret) { ?>
              <div class="text-danger"><?php echo $error_client_secret; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Terminal -->
          <div class="form-group<?php echo (!$dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_terminal">
              <?php echo $entry_terminal; ?>
              <span data-toggle="tooltip" title="<?php echo $help_terminal; ?>"></span>
            </label>
            <div class="col-sm-10">
              <input type="text" name="dna_payments_terminal"
                     value="<?php echo $dna_payments_terminal; ?>"
                     placeholder="<?php echo $entry_terminal; ?>"
                     id="dna_payments_terminal"
                     class="form-control"/>
              <?php if ($error_terminal) { ?>
              <div class="text-danger"><?php echo $error_terminal; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Test mode -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="dna_payments_test_mode"><?php echo $entry_test_mode; ?></label>
            <div class="col-sm-10">
              <select name="dna_payments_test_mode" id="dna_payments_test_mode" class="form-control">
                <?php if ($dna_payments_test_mode) { ?>
                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_yes; ?></option>
                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <!-- Test client ID -->
          <div class="form-group<?php echo ($dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_test_client_id">
              <?php echo $entry_test_client_id; ?>
              <?php if ($help_test_client_id):?>
                <span data-toggle="tooltip" title="<?php echo $help_test_client_id; ?>"></span>
              <?php endif; ?>
            </label>
            <div class="col-sm-10">
              <input type="text" name="dna_payments_test_client_id"
                     value="<?php echo $dna_payments_test_client_id; ?>"
                     placeholder="<?php echo $entry_test_client_id; ?>"
                     id="dna_payments_test_client_id"
                     class="form-control"
              />
              <?php if ($error_test_client_id) { ?>
              <div class="text-danger"><?php echo $error_test_client_id; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Tets client secret -->
          <div class="form-group<?php echo ($dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_test_client_secret">
              <?php echo $entry_test_client_secret; ?>
              <?php if ($help_test_client_secret): ?>
                <span data-toggle="tooltip" title="<?php echo $help_test_client_secret; ?>"></span>
              <?php endif; ?>
            </label>
            <div class="col-sm-10">
              <textarea name="dna_payments_test_client_secret"
                        id="dna_payments_test_client_secret"
                        rows="5"
                        class="form-control"><?php echo $dna_payments_test_client_secret; ?></textarea>
              <?php if ($error_test_client_secret) { ?>
              <div class="text-danger"><?php echo $error_test_client_secret; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Test terrminal -->
          <div class="form-group<?php echo ($dna_payments_test_mode ? ' required' : '')?>">
            <label class="col-sm-2 control-label" for="dna_payments_test_terminal">
              <?php echo $entry_test_terminal; ?>
              <?php if ($help_test_terminal): ?>
                <span data-toggle="tooltip" title="<?php echo $help_test_terminal; ?>"></span>
              <?php endif; ?>
            </label>
            <div class="col-sm-10">
              <input type="text" name="dna_payments_test_terminal"
                     value="<?php echo $dna_payments_test_terminal; ?>"
                     placeholder="<?php echo $entry_test_terminal; ?>"
                     id="dna_payments_test_terminal"
                     class="form-control"/>
              <?php if ($error_test_terminal) { ?>
              <div class="text-danger"><?php echo $error_test_terminal; ?></div>
              <?php } ?>
            </div>
          </div>

          <!-- Description -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="dna_payments_description">
              <?php echo $entry_description; ?>
              <?php if ($help_description): ?>
              <span data-toggle="tooltip" title="<?php echo $help_description; ?>"></span>
              <?php endif; ?>
            </label>
            <div class="col-sm-10">
              <textarea name="dna_payments_description"
                        id="dna_payments_description"
                        rows="5"
                        class="form-control"><?php echo $dna_payments_description; ?></textarea>
            </div>
          </div>

          <!-- Payment sort order -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="dna_payments_sort_order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="number" name="dna_payments_sort_order"
                     value="<?php echo $dna_payments_sort_order; ?>"
                     id="dna_payments_sort_order"
                     class="form-control"/>
            </div>
          </div>

          <!-- Enable/Disable -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="dna_payments_status" id="input-status" class="form-control">
                <?php if ($dna_payments_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

          <!-- Type -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="dna_payments_type">
              <?php echo $entry_type; ?>
              <?php if ($help_type): ?>
                <span data-toggle="tooltip" title="<?php echo $help_type; ?>"></span>
              <?php endif; ?>
            </label>
            <div class="col-sm-10">
              <select name="dna_payments_type" id="dna_payments_type" class="form-control">
                <?php foreach($payment_types as $type): ?>
                  <option value="<?php echo $type['id']?>"<?php echo ($type['id'] == $dna_payments_type ? ' selected="selected"' : '')?>><?php echo $type['title']; ?></option>
                <?php endforeach; ?>
              </select>
            </div>
          </div>

          <!-- Payment order status -->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="dna_payments_order_status_paid_id">
              <span data-toggle="tooltip" title="<?php echo $help_order_status_paid; ?>">
                  <?php echo $entry_order_status_paid; ?>
              </span>
            </label>
            <div class="col-sm-10">
              <select name="dna_payments_order_status_paid_id"
                      id="dna_payments_order_status_paid_id"
                      class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $dna_payments_order_status_paid_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"
                        selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>">
                  <?php echo $order_status['name']; ?>
                </option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>

          <!-- Payment method name -->
          <div class="form-group required' }}">
            <label class="col-sm-2 control-label" for="dna_payments_payment_method_name">
              <?php echo $entry_payment_method_name; ?>
            </label>
            <div class="col-sm-10">
              <input
                type="text"
                name="dna_payments_payment_method_name"
                value="<?php echo $dna_payments_payment_method_name; ?>"
                placeholder="<?php echo $entry_payment_method_name; ?>"
                id="dna_payments_payment_method_name"
                class="form-control"
              />
              <?php if ($error_payment_method_name) { ?>
                <div class="text-danger"><?php echo $error_payment_method_name; ?></div>
              <?php } ?>
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

<script>
  var ids = ['dna_payments_client_id', 'dna_payments_client_secret', 'dna_payments_terminal'];
  var testIds = ['dna_payments_test_client_id', 'dna_payments_test_client_secret', 'dna_payments_test_terminal']
  $('#dna_payments_test_mode').change(function(e) {
    if (e.target.value === '1') {
      for (var i = 0; i < ids.length; i++) {
        $('#' + ids[i]).closest('.form-group').removeClass('required');
      }
      for (var i = 0; i < testIds.length; i++) {
        $('#' + testIds[i]).closest('.form-group').addClass('required');
        $('#' + testIds[i]).closest('.form-group').addClass('required');
      }
    } else {
      for (var i = 0; i < ids.length; i++) {
        $('#' + ids[i]).closest('.form-group').addClass('required');
      }
      for (var i = 0; i < testIds.length; i++) {
        $('#' + testIds[i]).closest('.form-group').removeClass('required');
        $('#' + testIds[i]).closest('.form-group').removeClass('required');
      }
    }
  });
</script>

<?php echo $footer; ?>