<!DOCTYPE html>
<html>

<?php
	session_start();
	require_once('assets/php/modele/show.php');
	require_once('assets/php/modele/idCheck.php');
	require_once('assets/php/modele/idAdmin.php');
	include('template.php');
	include('template_admin.php');
?>
                <div class="d-flex flex-column flex-fill" style="padding:10px;">
                    <h2 class="justify-content-center">Add user</h2>
                    <form method="post" action="assets/php/add_user.php" >
                        <div class="form-group"><input class="form-control" type="text" name="login" placeholder="Login"></div>
                        <div class="form-group"><input class="form-control" type="password" name="pwd" placeholder="Password"></div>
                        <div class="form-group"><button class="btn btn-primary btn-block" type="submit" >Add user</button></div>
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