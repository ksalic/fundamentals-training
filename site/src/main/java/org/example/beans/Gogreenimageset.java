package org.example.beans;

import org.onehippo.cms7.essentials.dashboard.annotations.HippoEssentialsGenerated;
import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageSet;
import org.hippoecm.hst.content.beans.standard.HippoGalleryImageBean;

@HippoEssentialsGenerated(internalName = "myhippoproject:gogreenimageset")
@Node(jcrType = "myhippoproject:gogreenimageset")
public class Gogreenimageset extends HippoGalleryImageSet {
    @HippoEssentialsGenerated(internalName = "myhippoproject:featured")
    public HippoGalleryImageBean getFeatured() {
        return getBean("myhippoproject:featured", HippoGalleryImageBean.class);
    }
}
