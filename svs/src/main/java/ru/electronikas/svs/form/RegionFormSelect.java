package ru.electronikas.svs.form;

/**
 * User: KB
 * Date: 15.12.13
 */
public class RegionFormSelect {
//    List<Region> regionList;

    Integer selectedRegion;
//    Integer selectedLand;

//    private List<Land> lands = new ArrayList<Land>();

//    public RegionFormSelect(List<Region> regionList) {
//        this.regionList = regionList;
//
//        selectedRegion = regionList.get(0).getId();
////        selectedLand = regionList.get(0).getLands().iterator().next().getId();
//
//    }

    public RegionFormSelect() {
    }

//    public List<Region> getRegionList() {
//        return regionList;
//    }
//
//    public void setRegionList(List<Region> regionList) {
//        this.regionList = regionList;
//    }

    public Integer getSelectedRegion() {
        return selectedRegion;
    }

    public void setSelectedRegion(Integer selectedRegion) {
        this.selectedRegion = selectedRegion;
    }

   /* public Integer getSelectedLand() {
        return selectedLand;
    }

    public void setSelectedLand(Integer selectedLand) {
        this.selectedLand = selectedLand;
    }
*/
//    public List<Land> getLands() {
//        return lands;
//    }
//
//    public void setLands(List<Land> lands) {
//        this.lands = lands;
//    }
}
