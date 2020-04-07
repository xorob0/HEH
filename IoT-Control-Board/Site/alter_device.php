<!DOCTYPE html>
<html>

<?php
	session_start();
	require_once('assets/php/modele/show.php');
	require_once('assets/php/modele/idCheck.php');
	include('template.php');
	include('template_settings.php');
?>
               <div class="d-flex flex-column flex-fill" style="padding:10px;">
                    <h2 class="justify-content-center">Modify device</h2>
                    <form method="post" action="assets/php/alter_device.php">
  <div class="form-group">
     <select  class="form-control" name="device" >
		<?php
		showOwnedDevicesOptions()
		?>
      </select>
  </div>
                        <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Name"></div>
                        <div class="form-group"><input class="form-control" type="text" name="description" placeholder="Description"></div>
                        <div class="form-group">
							<select  class="form-control" name="type" >
								<?php
									showTypes()
								?>
							</select>
                        </div>
                        <div class="form-group">
							<select  class="form-control" name="location" >
								<?php
									showLocations()
								?>
							</select>
                        </div>
                        <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Add device</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
</body>

</html>