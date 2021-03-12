<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Get Info</title>
    <style>
form {
  /* Расположим форму по центру страницы */
  margin: 0 auto;
  width: 550px;
  /* Определим контур формы */
  padding: 1em;
  border: 1px solid #CCC;
  border-radius: 1em;
}

ul {
  list-style: none;
  padding: 0;
  margin: 0;
  margin-left: .5em;
}

form li + li {
  margin-top: 1em;
}

label {
  /* Определим размер и выравнивание */
  display: inline-block;
  width: 90px;
  text-align: right;
}

input,
textarea {
  /* Убедимся, что все поля имеют одинаковые настройки шрифта
     По умолчанию в textarea используется моноширинный шрифт */
  font: 1em sans-serif;

  /* Определим размер полей */
  width: 400px;
  box-sizing: border-box;

  /* Стилизуем границы полей */
  border: 1px solid #999;
    margin-left: .5em;
}

input:focus,
textarea:focus {
  /* Дополнительная подсветка для элементов в фокусе */
  border-color: #000;
}

textarea {
  /* Выровним многострочные текстовые поля с их текстами-подсказками */
  vertical-align: top;

  /* Предоставим пространство для ввода текста */
  height: 20em;
}

.button {
  /* Выровним кнопки с их текстами-подсказками */
  padding-left: 90px; /* same size as the label elements */
}

button {
  /* Этот дополнительный внешний отступ примерно равен расстоянию
     между текстами-подсказками и текстовыми полями */
  margin-left: .5em;
}
    </style>
</head>
<body>
<form method="post">
  <div>
    <label for="prodId">Product Id:</label>
    <input type="text" id="prodId" name="Product Id" />
  </div>
    <div>  </div>
  <div>
    <label for="clientId">Client Id:</label>
    <input type="clientId" id="clientId" name="Client Id" />
  </div>
  <div>
  <label for="radio"</label>
    <input type="radio" name="radio" value="r1">PKAP<Br>
    <input type="radio" name="radio" value="r2">EKP<Br>
</div>
  <div>
    <label for="msg">Request:</label>
    <textarea id="msg" name="msg"></textarea>
  </div>
    <li class="button">
      <button type="submit" name "button1">Get data</button>
      <button type="submit" name "button2">Send Request</button>
    </li>
    </form>
</body>
</html>