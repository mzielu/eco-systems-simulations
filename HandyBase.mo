partial model HandyBase
    // All parameters, Egalitarian values
    parameter Real birthRComm = 0.03 "Birth Rate of Commoners. Number of people/year";
    parameter Real birthRElites = 0.03 "Birth Rate of Elites. Number of people/year";
    parameter Real natureRegen = 0.01 "Nature's regeneration factor. 1/ecoDollars*year";
    parameter Real natureCap = 100.0 "Nature's capacity. ecoDollars";
    parameter Real subsSal = 0.0005 "Subsistence Salary per Worker. Dollars/worker";
    parameter Real consWorkerMin = 0.005 "Minimum required Consumption per Worker. Dollars/worker";
    parameter Real depletFactorEq = 6.67e-006 "Rate of depletion per worker at Equilibrium. 1/Worker*year";
    parameter Real deathRnormal = 0.01 "Healthy Death Rate. people/year";
    parameter Real deathRfamine = 0.07000000000000001 "Famine Death Rate. people/year";
    parameter Real ineqFactor = 1 "Inequality in consumption level for Workers and Non-Workers. Does not play a role when elites=0 (as in all Egal scenarios). Dimensionless";
    Real depletFactor "Rate of depletion per worker. 1/Worker*year";
    Real commoners "Population of Commoners. Number of people";
    Real elites "Population of Elites. Number of people";
    Real nature "Natural stock (renewable and nonrenewable). ecoDollars";
    Real wealth "Accumulated wealth. EcoDollars";
    Real wealthMin "Minimum threshold for accumulated wealth before famine. EcoDollars";
    Real deathRComm "Death Rate for Commmoners. Number of people/year";
    Real deathRElites "Death Rate for Elites. Number of people/year";
    Real consRComm "Consumption Rate of Commoners. Dollars/year";
    Real consRElites "Consumption Rate of Elites. Dollars/year";
    Real eta "Dimensionless derived parameter. Dimensionless";
    Real carryingCap "Carrying Capacity. Number of people";
    Real carryingCapMax "Maximum Carrying Capacity. Number of people";
    Real totalPopulation "Total population: elites and commoners. Number of people";
    // Helper variables for graphing purposes
  Real nature_,wealth_,carryingCap_,carryingCapMax_,commoners_,elites_,totalPopulation_;
equation
    // Main equations
    der(commoners) = birthRComm * commoners - deathRComm * commoners;
    der(elites) = birthRElites * elites - deathRElites * elites;
    der(nature) = natureRegen * nature * (natureCap - nature) - depletFactor * commoners * nature;
    der(wealth) = depletFactor * commoners * nature - consRComm - consRElites;
    deathRComm = deathRnormal + max(0, 1 - consRComm / (subsSal * commoners)) * (deathRfamine - deathRnormal);
    deathRElites = deathRnormal + max(0, 1 - consRElites / (subsSal * elites)) * (deathRfamine - deathRnormal);
    consRComm = min(1, wealth / wealthMin) * subsSal * commoners;
    consRElites = min(1, wealth / wealthMin) * ineqFactor * subsSal * elites;
    wealthMin = consWorkerMin * commoners + ineqFactor * consWorkerMin * elites;
    eta = (deathRfamine - birthRComm) / (deathRfamine - deathRnormal);
    carryingCap = natureRegen / depletFactor * (natureCap - subsSal * eta / depletFactor);
    carryingCapMax = natureRegen / (eta * subsSal) * (natureCap / 2) ^ 2;
    totalPopulation = elites + commoners;
  initial equation
    nature = natureCap;
    wealth = 0;
end HandyBase;
