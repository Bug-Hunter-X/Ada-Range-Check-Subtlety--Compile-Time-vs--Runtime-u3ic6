```ada
function Check_Range(Value : Integer) return Boolean is
begin
  -- Explicitly check both conditions separately to avoid potential short-circuiting problems
  -- and compiler optimizations that might skip runtime checks.
  if Value >= 10 and Value <= 20 then
    return True;
  else
    return False;
  end if;
end Check_Range;

procedure Example is
  Result : Boolean;
begin
  Result := Check_Range(25);  
  Put_Line(Boolean'Image(Result)); --Added output for clarity
  Result := Check_Range(15);  
  Put_Line(Boolean'Image(Result));--Added output for clarity
  Result := Check_Range(-5);  
  Put_Line(Boolean'Image(Result)); --Added output for clarity
end Example;
```