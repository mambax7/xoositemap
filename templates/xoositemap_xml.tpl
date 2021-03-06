<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc><{$smarty.const.XOOPS_URL}>/</loc>
        <lastmod><{$modification}></lastmod>
        <priority>1.0</priority>
    </url>

    <{foreach item=module from=$modules}>
        <url>
            <loc><{$smarty.const.XOOPS_URL}>/modules/<{$module.dirname}></loc>
            <lastmod><{$module.date}></lastmod>
        </url>
    <{/foreach}>

    <{foreach item=item from=$items}>
        <url>
            <loc><{$item.link}></loc>
            <{if $item.date}>
                <lastmod><{$item.date}></lastmod>
            <{/if}>
        </url>
    <{/foreach}>
</urlset>
