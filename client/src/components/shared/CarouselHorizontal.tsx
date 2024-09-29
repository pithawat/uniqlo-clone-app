import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/pagination';
import 'swiper/css/navigation';

// Import required modules
import { Pagination, Navigation } from 'swiper/modules';
import Advert from './Advert';
export default function CarouselHorizontal({dataSlider}:{dataSlider: {name: string}[]}) {
    return(
        <Swiper
            direction={'horizontal'}
            slidesPerView={1}
            spaceBetween={0}
            pagination={{
              clickable: true,
            }}
            navigation={{
              nextEl: '.swiper-button-next',
              prevEl: '.swiper-button-prev',
            }}
            modules={[Pagination, Navigation]}
            className="h-full w-full"
        >
            {
                dataSlider.map((value, index) => {
                    return (
                        <SwiperSlide key={index}>
                            <img src='' alt='' />
                            <Advert name='a' detail='a' price='590' closeout='490' limited='' path='/in' license='a' />
                        </SwiperSlide>
                )})
            }
            
          <div className="swiper-button-next"></div>
          <div className="swiper-button-prev"></div>
        </Swiper>
    )
}