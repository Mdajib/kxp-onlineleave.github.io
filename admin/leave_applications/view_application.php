<?php
require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT l.*,concat(u.firstname) as `name`,lt.code,lt.name as lname from `leave_applications` l inner join `users` u on l.user_id=u.id inner join `leave_types` lt on lt.id = l.leave_type_id  where l.id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
    $lt_qry = $conn->query("SELECT meta_value FROM `employee_meta` where user_id = '{$user_id}' and meta_field = 'employee_id' ");
    $employee_id = ($lt_qry->num_rows > 0) ? $lt_qry->fetch_array()['meta_value'] : "N/A";
}
?>
<style>
    p,label{
        margin-bottom:5px;
    }
    #uni_modal .modal-footer{
        display:none !important;
    }
    
</style>
<div class="container-fluid">
    <div id="print_out" style="margin-left: 50px; margin-right: 50px; margin-top: 50px; font-size: 22px;">
    <div class="form-group d-flex justify-content-center">
        <?php
            $user_id = $conn->real_escape_string($user_id);
            $userImage = $conn->query("SELECT avatar FROM users WHERE id='$user_id'")->fetch_assoc()['avatar'];
        ?>
        <br>
        <img src="../<?= $userImage ?>" alt="user_avatar" id="cimg" class="img-avatar img-thumbnail" style="width: 150px; height: 200px;">
    </div><br>
    <?php if($_settings->userdata('type') != 3): ?>
    <p class="m-0"><b>Employee ID &nbsp;</b> <span class="mx-2">: <?php echo $employee_id ?></span></p>
    <p class="m-0"><b>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <span class="mx-2">: <?php echo ucwords(strtolower($name)) ?></span></p>
    <?php endif; ?>
    <p class="m-0"><b>Leave Type &nbsp;&nbsp;&nbsp;&nbsp;</b> <span class="mx-2">: <?php echo $code.' - '.$lname ?></span></p>
    <p class="m-0"><b>Date of Leave </b> <span class="mx-2">
    : <?php
       if ($type == 2) {
            $date = date("d/m/Y", strtotime($date_start));
            $time = isset($time_start) ? $time_start : '';
            echo $date . '&nbsp' . $time;
        }else{
            echo date("d/m/Y", strtotime($date_start)).' - '.date("d/m/Y", strtotime($date_end));
        }
    ?>
    </span></p>
    <p class="m-0"><b>Days of Leave </b> <span class="mx-2">: <?php echo $leave_days ?></span> Day(s)</p>
    <p class="m-0"><b>Reason &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b><span class="mx-2">: <?php echo $reason ?></span></p>
    <p><b>Status &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
    : <?php if($status == 1): ?>
        <span class="badge badge-success mx-2">Approved</span>
    <?php elseif($status == 2): ?>
        <span class="badge badge-danger mx-2">Rejected</span>
    <?php elseif($status == 3): ?>
        <span class="badge badge-danger mx-2">Cancelled</span>
    <?php else: ?>
        <span class="badge badge-primary mx-2">Pending</span>
    <?php endif; ?>
    </p>

    <br><br>
    
    </div>
    <div class="w-100 d-flex justify-content-end mb-2">
        <a href="javascript:void(0)" class="btn btn-flat btn-success ml-3 bg-black" id="print"><span class="fas fa-print"></span> Print</a>
        <button class="btn btn-flat btn-sm btn-default bg-black" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
    </div>


<script>
    $(function(){
        $('#print').click(function(){
            start_loader()
            var _h = $('head').clone()
            var _p = $('#print_out').clone();
            var _el = $('<div>')
            _el.append(_h)
            _el.append('<style>html, body, .wrapper {min-height: unset !important;}.btn{display:none !important}'+
            '.footer { position: sticky; bottom: 0; width: 100%; text-align: left; margin-top: 30px; } </style>')
            _p.prepend('<div class="d-flex mb-3 w-100 align-items-center justify-content-center">'+
            '<img class="mx-4" src="<?php echo validate_image($_settings->info('logo')) ?>" width="50px" height="50px"/>'+
            '<div class="px-2">'+
            '<h3 class="text-center"><?php echo $_settings->info('name') ?></h3>'+
            '<h3 class="text-center">Employee\'s Leave Information Year <?php echo date("Y") ?></h3>'+
            '</div>'+
            '</div><hr/>');


            

            _el.append(_p)
            var nw = window.open("","_blank","width=1200,height=1200")
            nw.document.write(_el.html())
            nw.document.close()
            setTimeout(() => {
                nw.print()
                setTimeout(() => {
                    nw.close()
                    end_loader()
                }, 300);
            }, 500);
        })
    })
</script>


</div>


                    
