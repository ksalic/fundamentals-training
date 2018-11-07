package org.example.components;
/*
 * Copyright 2016 Hippo B.V. (http://www.onehippo.com)
 * Usage is prohibited except for people attending a training given or authorised by Hippo B.V., and only for that purpose.
 */

import java.util.List;

import org.hippoecm.hst.content.beans.query.HstQuery;
import org.hippoecm.hst.content.beans.query.exceptions.FilterException;
import org.hippoecm.hst.content.beans.query.filter.BaseFilter;
import org.hippoecm.hst.content.beans.query.filter.Filter;
import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.parameters.ParametersInfo;
import org.onehippo.cms7.essentials.components.EssentialsListComponent;
import org.onehippo.cms7.essentials.components.info.EssentialsListComponentInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProductListComponent {

    private static Logger log = LoggerFactory.getLogger(ProductListComponent.class);

/*
    @Override
    protected void contributeAndFilters(final List<BaseFilter> filters, final HstRequest request, final HstQuery query) {
        try {
            // TODO create a new Filter and add it to the list filters

        } catch (FilterException e) {
            log.error("An exception occurred while trying to create a query filter for instock greater than zero: {}", e);
        }
    }

*/
}
