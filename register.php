<?php ob_start();
session_start();
$captcha_text="";
$captcha_array=array_merge(range('a','z'),range('A','Z'),range(0,9));
for($i=0;$i<6;$i++)
{
	$captcha_text.=$captcha_array[rand(0,61)];
}

$_SESSION['cap']= $captcha_text;
$img=imagecreate(200,50);

$bg=imagecolorallocate($img,rand(0,255),rand(0,255),rand(0,255));

$txt=imagecolorallocate($img,rand(0,255),rand(0,255),rand(0,255));

imagefilledrectangle($img,0,0,200,50,$bg);


$angle[0]=rand(-20,20);
$angle[1]=rand(-20,20);
$angle[2]=rand(-20,20);
$angle[3]=rand(-20,20);
$angle[4]=rand(-20,20);
$angle[5]=rand(-20,20);


$start=10;
for($i=0;$i<6;$i++)
{
	imagettftext($img,20,$angle[$i],$start,rand(30,33),$txt,"FigginsBrute Trash.ttf",$captcha_text[$i]);
	$start+=25;	
}


imagepng($img,"captcha_image.png");

ob_end_flush();


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration Form</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="verify.php" enctype="multipart/form-data">
  <table width="758" border="0">
    <tr>
      <td colspan="2"><h1 align="center">Registration Form</h1></td>
    </tr>
    <tr>
      <td width="200">User Name:</td>
      <td width="548"><label>
        <input type="text" name="nm" id="textfield" />
      </label></td>
    </tr>
    <tr>
      <td>Password:</td>
      <td><label>
        <input type="password" name="pd" id="textfield2" />
      </label></td>
    </tr>
    <tr>
      <td>Email:</td>
      <td><label>
        <input type="text" name="em" id="textfield3" />
      </label></td>
    </tr>
    <tr>
      <td>Gender:</td>
      <td><table width="200">
        <tr>
          <td>
            <input type="radio" name="gen" value="Male" id="gen_0" />
            Male
             <input type="radio" name="gen" value="Female" id="gen_1" />
            Female</td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="34">Profile Picture:</td>
      <td height="34"><label>
        <input type="file" name="pro" id="textfield4" />
      </label></td>
    </tr>
    <tr>
      <td height="34" rowspan="2">Insert Captcha: </td>
      <td height="16"><img src="captcha_image.png" />
<input type='button' value='refresh' onClick="location.reload(true);"/>
</td>
    </tr>
    <tr>
      <td height="38"><label>
        <input name="cp" type="text" id="cp" size="30" />
      </label></td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" name="btn" id="button" value="Submit" />
        <input type="reset" name="button2" id="button2" value="Reset" />
    </td>
    </tr>
  </table>
</form>
</body>
</html>
