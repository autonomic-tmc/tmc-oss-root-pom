The @projectName@ may include third party dependencies licensed under the following terms.
This list was generated using third party software as of the date listed. This list
may change with specific versions of the @projectName@ and may not be complete;
it is provided “As-Is.”

TO THE EXTENT PERMITTED BY APPLICABLE LAW, AUTONOMIC AND ITS AFFILIATES MAKE NO REPRESENTATIONS OR
WARRANTIES, EXPRESS OR IMPLIED, STATUTORY OR OTHERWISE, WITH REGARD TO THE LIST OR ITS ACCURACY OR
COMPLETENESS, OR WITH RESPECT TO ANY RESULTS TO BE OBTAINED FROM USE OR DISTRIBUTION OF THE LIST. BY
USING OR DISTRIBUTING THE LIST, YOU AGREE THAT IN NO EVENT SHALL AUTONOMIC OR ITS AFFILIATES BE HELD
LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY OTHER DAMAGES WHATSOEVER
RESULTING FROM ANY USE OR DISTRIBUTION OF THIS LIST.

In case of any license issues related to @projectName@, please contact @support@.

Date Generated: @generated@

<#function licenseFormat licenses>
    <#assign result = ""/>
    <#list licenses as license>
        <#assign result = result + " (" +license + ")"/>
    </#list>
    <#return result>
</#function>
<#function artifactFormat p>
    <#if p.name?index_of('Unnamed') &gt; -1>
        <#return p.artifactId + " (" + p.groupId + ":" + p.artifactId + ":" + p.version + " - " + (p.url!"no url defined") + ")">
    <#else>
        <#return p.name + " (" + p.groupId + ":" + p.artifactId + ":" + p.version + " - " + (p.url!"no url defined") + ")">
    </#if>
</#function>

<#if dependencyMap?size == 0>
The project has no dependencies.
<#else>
    <#list dependencyMap as e>
        <#assign project = e.getKey()/>
        <#assign licenses = e.getValue()/>
    ${licenseFormat(licenses)} ${artifactFormat(project)}
    </#list>
</#if>