File {
  * input files:
  Grid=    "Al_Schottky_msh.tdr"
  * output files:
  Plot=    "Al_Schottky_des.tdr"
  Current= "Al_Schottky_des.plt"
  Output=  "Al_Schottky_des.log"
}

Electrode {
  { Name="Al_contact"  Voltage=0.0  Schottky WorkFunction=4.28 }
  { Name="Ground"  Voltage=0.0}  
}

Physics {
  Hydrodynamic(eTemperature)
  Mobility(DopingDependence Enormal
  hHighFieldSaturation(GradQuasiFermi)
  eHighFieldSaturation(CarrierTempDrive))
  Recombination(SRH(DopingDependence)
  eAvalanche(CarrierTempDrive)
  hAvalanche(Eparallel))
  EffectiveIntrinsicDensity(BandGapNarrowing (OldSlotboom))
}

Plot {
  eDensity hDensity eCurrent hCurrent
  Potential SpaceCharge ElectricField
  eMobility hMobility eVelocity hVelocity
  Doping DonorConcentration AcceptorConcentration
  ConductionBandEnergy ValenceBandEnergy
}

Math {
  Extrapolate
  RelErrControl
}

Solve {
  #-initial solution:
  Poisson
  Coupled { Poisson Electron }
  
  quasistationary (InitialStep = 0.010 MaxStep = 0.050 MinStep=0.005
    Goal {name= "Al_contact" voltage = -0.5})
    {Coupled {Poisson Electron} }  
  quasistationary (InitialStep = 0.010 MaxStep = 0.050 MinStep=0.005
    Goal {name= "Al_contact" voltage = 0.5})
    {Coupled {Poisson Electron} }
}
