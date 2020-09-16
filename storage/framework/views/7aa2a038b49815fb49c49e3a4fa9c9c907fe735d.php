<html>
<head>
    <title>IndiPay</title>
</head>
<body>
    <form method="post" name="redirect" action="<?php echo e($endPoint); ?>">
        <input type=hidden name=encRequest value="<?php echo e($encRequest); ?>">
        <input type=hidden name=access_code value="<?php echo e($accessCode); ?>">
    </form>
<script language='javascript'>document.redirect.submit();</script>
</body>
</html>

