```ada
function Check_Range(Value : Integer) return Boolean is
begin
  if Value >= 10 and Value <= 20 then
    return True;
  else
    return False;
  end if;
end Check_Range;

procedure Example is
  Result : Boolean;
begin
  Result := Check_Range(25);  --This will correctly return False
  Result := Check_Range(15);  --This will correctly return True
  Result := Check_Range(-5);  --This will correctly return False
end Example;
```