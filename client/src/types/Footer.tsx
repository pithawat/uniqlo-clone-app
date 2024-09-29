type DataLinkFooter = {
    name: string;
    url: string;
}

type DataFollowFooter = {
    icon: string;
    alt: string;
    url: string;
}

export type BoxLinksFooter = {
    header: string;
    links: DataLinkFooter[];
}

export type BoxNewsFooter = {
    header: string;
    description: string;
    links: DataLinkFooter;
}

export type BoxFollowFooter = {
    header: string;
    links: DataFollowFooter[]
}