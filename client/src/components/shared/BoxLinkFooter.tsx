import { BoxLinksFooter } from "../../types/Footer"

export default function BoxLinkFooter({data}:{data: BoxLinksFooter}) {
    return(
        <div className="col-span-1 flex flex-col gap-5">
            <h2 className="font-bold text-base">{data.header}</h2>
            {data.links.map((value, index) => {
                return <a className="text-sm" key={index} href={value.url}>{value.name}</a>
            })}
        </div>
    )
}