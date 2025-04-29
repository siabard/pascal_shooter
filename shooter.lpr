program shooter;
{$mode objfpc}{$h+}
uses
  sdl2,
  engine,
  LogUtil;

var
  AEngine: TEngine;
begin

  if SDL_Init(SDL_INIT_VIDEO or SDL_INIT_AUDIO) < 0 then
  begin
    LogDebug('SHOOTER::MAIN::SDL_INIT_ERROR');
    exit;
  end;

  {----------------------------------------------------------------------------}
  {  Engine 초기화                                                             }
  {----------------------------------------------------------------------------}
  AEngine := TEngine.Create;
  AEngine.GameInit('resources/assets.txt');

  {----------------------------------------------------------------------------}
  {  이벤트 + 화면 렌더링                                                      }
  {----------------------------------------------------------------------------}
  AEngine.GameLoop;

end.
