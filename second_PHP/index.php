<?php
   if( $_POST['name'] || $_POST['phone'])
   {
      if (!preg_match('/((([A-z]{1,}) ([A-z]{1,}) ([A-z]{1,}))|(([А-я]{1,}) ([А-я]{1,}) ([А-я]{1,})))/u',$_POST['name']))
      {
         echo "Введено неправильное поле ФИО\n";
         echo "Вернитесь на предыдущую страницу и повторите ввод снова";
         die;
      }
      if (!preg_match("/(\+[7]\([9][0-9]{2,2}\)[0-9]{3,3}\-[0-9]{2,2}\-[0-9]{2,2})/",$_POST['phone']))
      {
         echo "Неправильно набран номер\n";
         echo "Вернитесь на предыдущую страницу и повторите ввод снова";
         die;
      }
      if (strpos($_POST['email'], "gmail.com"))
      {
         echo "Регистрация с адресом @gmail.com невозможна\n";
         echo "Вернитесь на предыдущую страницу и повторите ввод снова";
         die;
      }

      /*$name = trim($_POST['name']);
      $email = trim($_POST['email']);
      $phone = trim($_POST['phone']);
      $comment = trim($_POST['comment']);

      // указываем адрес отправителя
      $fromMail = 'admin@yousite.ru';
      $fromName = 'yousite.ru Форма';

      // Сюда введите Ваш email
      $emailTo = 'example@mail.ru';
      $subject = 'Форма обратной связи на php';
      $subject = '=?utf-8?b?'. base64_encode($subject) .'?=';
      $headers = "Content-type: text/plain; charset=\"utf-8\"\r\n";
      $headers .= "From: ". $fromName ." <". $fromMail ."> \r\n";
      $mail = mail($emailTo, $subject, $body, $headers, '-f'. $fromMail );*/

      echo "Добрый день ". $_POST['name']. " Ваша заявка будет учтена в ближайшее время";
      exit();
   }
   
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <title>Форма обратной связи</title><br/>
   <h1  align = center>Форма обратной связи<br/><br/></h1>
   <style>
      #divine {
         margin-left: auto;
         margin-right: auto;
         background-color: #EEEEEE;
         width: 400px;
      }
      #f {
      }
   </style>
</head>
<body>
   <div id = divine>
      <form id = f class = "form" action = "<?php $_PHP_SELF ?>" method = "POST">
         Комментарий: <br/> <textarea form = f type = "text" name = "comment" alt = "Опишите вашу проблему"> </textarea>
         <br/>
         <br/>
         ФИО: <br/> <input placeholder = "Имя Фамилия Отчество" class = fio type = "text" name = "name" required/>
         <?php echo "*Обязательное поле" ?>
         <br/>
         <br/>
         Адрес: <br/> <input type = "text" name = "adress" />
         <br/>
         <br/>
         E-mail: <br/> <input placeholder = "name@example.ru" type = "email" name = "email"/>
         <br/>
         <br/>
         Мобильный телефон: <br/> <input placeholder = "+7(XXX)XX-XX-XX" type = "tel" name = "phone" required /> 
         <?php echo "*Обязательное поле" ?>
         <br/>
         <br/>
         Прикрепить файл: <br/> <input type = "file" name = "file" />
         <br/>
         <br/>
         <br/>
         <input type = "submit" />
      </form>
   </div>
   </body>
</html>
   