<!DOCTYPE html>
<html>
<?php
	session_start();
	require_once('assets/php/modele/show.php');
	require_once('assets/php/modele/idCheck.php');
	include('template.php');
?>
            <div class="container hero" style="background-color:#ffffff;padding:0px;">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>State</th>
                            </tr>
                        </thead>
                        <tbody>
							<?php
								showObjects();
							?>
                        </tbody>
                    </table>
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