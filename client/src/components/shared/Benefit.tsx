import { BenefitData } from "../../types/Benefit";

export default function Benefit({image, topic, detail}:BenefitData) {
    return(
        <figure className="flex flex-col justify-start items-center">
          <img src={image} alt={topic} />
          <figcaption className="mt-5">
            <h2 className="text-lg font-bold mb-1">{topic}</h2>
            <p className="text-base font-normal">{detail}</p>
          </figcaption>
        </figure>
    )
}
