size(200);
import patterns;
path p=(-66,31)..controls(-96.2356942013,-5.79589242792)and(-71.6572988397,-17.4643597507)..(-60,-35)
..controls(-51.2495490522,-48.1629772858)and(-31.6086355085,-52.3743723978)..(-16,-54)
  ..controls(135.75645797,-69.8053205069)and(11.0620519889,124.782102583)..cycle;
path q=(60,79)..controls(-30.2963303984,76.9080408613)and(-5.87320224635,0.0121048792294)..(27,-21)
..controls(104.447231778,-70.503219812)and(208.758545663,45.349549315)..(132,72)
  ..controls(122.033002911,75.460526279)and(102.754253009,79.9905181075)..cycle;

add("hatch",hatch(H=2mm,dir=NE));

picture intersection;

path r=buildcycle(q,reverse(p));
fill(r,pattern("hatch"));

label("$A$",(-20,0),UnFill);
label("$B$",(80,30));

draw(p,linewidth(1));
draw(q,linewidth(1));
