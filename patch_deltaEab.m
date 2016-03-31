% Loading patch data (includes Lab)
patch_CIELAB

% image dE's for Slient Tide, then Teal Mosaic
st_imaged_de = DEab(st_real_Labs, st_imaged_Labs);
tm_imaged_de = DEab(tm_real_Labs, tm_imaged_Labs);

% matching dE's for Slient Tide, then Teal Mosaic
st_matching_de = DEab(st_real_Labs, st_matching_Labs);
tm_matching_de = DEab(tm_real_Labs, tm_matching_Labs);