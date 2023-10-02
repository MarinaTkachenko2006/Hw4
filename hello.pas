begin
  print('Выберите язык/ Choose a language/ Sélectionnez la langue: ');
  var l := readstring();
  var t: integer;
  case l of
    'Русский': t := readinteger('Который час? ');
    'English': t := readinteger('What time is it? ');
    'Français': t := readinteger('Quelle heure est-il ? ')
  end;
  assert((t >= 0) and (t <= 23));
  case l of
    'Русский': 
      begin
        case t of
          4..10: print('Доброе утро, мир!');
          11..16: print('Добрый день, мир!');
          17..22: print('Добрый вечер, мир!')
        else print('Доброй ночи, мир!');
        end;
      end;
    'English': 
      begin
        case t of
          4..10: print('Good morning, world!');
          11..16: print('Good afternoon, world!');
          17..22: print('Good evening, world!')
        else print('Good night, world!');
        end;
      end;
    'Français': 
      begin
        case t of
          4..10: print('Bonjour, monde!');
          11..16: print('Bonjour, monde!');
          17..22: print('Bonsoir, monde!')
        else print('Bonne nuit, monde!');
        end;
      end;
  end;
end.