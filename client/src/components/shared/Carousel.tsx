// Import Swiper React components
import { Swiper, SwiperSlide } from 'swiper/react';

// Import Swiper styles
import 'swiper/css';
import 'swiper/css/pagination';
import 'swiper/css/navigation';

// Import required modules
import { Mousewheel, Pagination, Navigation } from 'swiper/modules';
import { useState } from 'react';
import Advert from './Advert';

export default function Carousel() {

  const [allowMousewheel, setAllowMousewheel] = useState(true);

  const handleReachEnd = () => {
    setAllowMousewheel(false);
    document.body.style.overflow = 'auto';
  };

  const handleReachBeginning = () => {
    setAllowMousewheel(false);
    document.body.style.overflow = 'auto';
  };

  const handleFromEdge = () => {
    setAllowMousewheel(true);
    document.body.style.overflow = 'hidden';
  };

  return (
    <div className='overflow-y-hidden w-[100vw]'>
      <Swiper
        direction={'vertical'}
        slidesPerView={1}
        spaceBetween={0}
        mousewheel={{ releaseOnEdges: true, enabled: allowMousewheel }}
        pagination={{
          clickable: true,
        }}
        modules={[Mousewheel, Pagination]}
        onReachEnd={handleReachEnd}
        onReachBeginning={handleReachBeginning}
        onFromEdge={handleFromEdge}
        className="h-[100vh] w-full"
      >
        <SwiperSlide className=''>
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
            <SwiperSlide className='bg-red-300'><Advert name='a' detail='a' price='590' closeout='490' limited='' path='/in' license='a' /></SwiperSlide>
            <SwiperSlide className='bg-green-400'>Horizontal Slide 2</SwiperSlide>
            <SwiperSlide className='bg-orange-400'>Horizontal Slide 3</SwiperSlide>
          <div className="swiper-button-next"></div>
          <div className="swiper-button-prev"></div>
          </Swiper>
        </SwiperSlide>
        <SwiperSlide className='bg-red-400'>Vertical Slide 2</SwiperSlide>
        <SwiperSlide className='bg-blue-400'>Vertical Slide 3</SwiperSlide>
        <SwiperSlide className='bg-indigo-400'>Vertical Slide 4</SwiperSlide>
      </Swiper>
    </div>
  );
}
