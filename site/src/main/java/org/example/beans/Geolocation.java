package org.example.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoCompound;

@HippoEssentialsGenerated(internalName = "myhippoproject:geolocation")
@Node(jcrType = "myhippoproject:geolocation")
public class Geolocation extends HippoCompound {
    @HippoEssentialsGenerated(internalName = "myhippoproject:latitude")
    public String getLatitude() {
        return getProperty("myhippoproject:latitude");
    }

    @HippoEssentialsGenerated(internalName = "myhippoproject:longitude")
    public String getLongitude() {
        return getProperty("myhippoproject:longitude");
    }
}
