           <div class='col-xs-12 col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4'> 
            <div class='panel panel-default'>
              <div class='panel-heading'>$lang{ADDNEWITEMS}</div>
              <div class='panel-body'>
                <form class='form-horizontal' method='GET' action='$SELF_URL'>
                <input type='hidden' name='index' value='$index'>
                  <div class='form-group'>
                    <label for='inputtext3' class='col-sm-2 control-label'>$lang{TASK}</label>
                    <div class='col-sm-10'>
                      <input type='text' class='form-control' id='inputtext3' placeholder='$lang{TEXT}' name='textadd'>
                    </div>
                  </div>
                  <div class='form-group'>
                    <div class='col-sm-offset-1 col-sm-10'>
                        <label class='radio-inline'>
                          <input type='radio' name='inlineRadioOptions' id='inlineRadio1' value='1'> $lang{EASY}
                        </label>
                        <label class='radio-inline'>
                          <input type='radio' name='inlineRadioOptions' id='inlineRadio2' value='2'> $lang{MEDIUM}
                        </label>
                        <label class='radio-inline'>
                          <input type='radio' name='inlineRadioOptions' id='inlineRadio3' value='3'> $lang{HARD}

                        </label>
                    </div>
                  </div>
                  <div class='form-group'>
                    <div class='col-sm-offset-1 col-sm-10'>
                      <button type='submit' class='btn btn-default'>$lang{ADD}</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>   