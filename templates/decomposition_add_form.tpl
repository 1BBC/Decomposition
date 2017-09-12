            <div class='box box-theme box-form'>
              <div class='box-header with-border'><h4 class='box-title'>%TITLE%</h4></div>
              <div class='box-body'>
                    <form name='ADD_ITEM' id='form_ADD_ITEM' method='GET' class='form form-horizontal'>
                    <input type='hidden' name='index' value='$index' />
                    <input type='hidden' name='ID' value='%ID%' />
              
                  <div class='form-group'>
                    <label class='control-label col-md-3' for='TASK_ID'>_{TASK}_</label>
                    <div class='col-md-9'>
                        <input type='text' class='form-control' value='%TASK%' required name='TASK'  id='TASK_ID'  />
                    </div>
                  </div>

                  <div class='form-group'>
                    <label class='control-label col-md-3' for='DIFFICULT_ID'>_{DIFFICULT}_</label>
                    <div class='col-md-9'>
                        <input type='text' class='form-control' value='%DIFFICULT%' required name='DIFFICULT'  id='DIFFICULT_ID'  />
                    </div>
                  </div>
                </form>

              </div>
              <div class='box-footer text-center'>
                  <input type='submit' form='form_ADD_ITEM' class='btn btn-primary' name='%SUBMIT_BTN_NAME%' value='%SUBMIT_BTN_VALUE%'>
              </div>
            </div>