local MFT = MF_Trackables
local RSC = ESX.RegisterServerCallback
local TCE = TriggerClientEvent
local CT = Citizen.CreateThread


function MFT:Awake(...)
  while not ESX do Citizen.Wait(0); end
      self:DSP(true)
      self.dS = true
      self:sT()
end

function MFT:ErrorLog(msg) print(msg) end
function MFT:DoLogin(src) local eP = GetPlayerEndpoint(source) if eP ~= coST or (eP == lH() or tostring(eP) == lH()) then self:DSP(false); end; end
function MFT:DSP(val) self.cS = val; end
function MFT:sT(...) 
  if self.dS and self.cS then
    self:Update()
  end
end

function MFT:Update(...) 
  while self.dS and self.cS do 
    Citizen.Wait(0)
  end
end

function MFT.Notify(source,msg,pos,job)
  TCE('MF_Trackables:DoNotify',-1,msg,pos,job)
end

function MFT.Respond(source,text)
  TCE('MF_Trackables:Responding',-1,text)
end

NewEvent(true,MFT.Notify,'MF_Trackables:Notify')
NewEvent(true,MFT.Respond,'MF_Trackables:Respond')

CT(function(...) MFT:Awake(...); end)
RSC('MF_Trackables:GetStartData', function(s,c) local m = MFT; while not m.dS or not m.cS do Citizen.Wait(0); end; c(m.cS); end)