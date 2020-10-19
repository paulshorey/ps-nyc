import React, { useState } from "react"
import { CarouselStyled } from "./carousels.styled.js"
import ImageDiv from "./ImageDiv"

import {
  ButtonBack,
  // ButtonFirst,
  // ButtonLast,
  ButtonNext,
  CarouselProvider,
  Slide,
  Slider
  // Image,
  // DotGroup
} from "pure-react-carousel"

import prcStyles from "pure-react-carousel/dist/react-carousel.es.css"
import { faAngleLeft, faAngleRight } from "@fortawesome/pro-regular-svg-icons"
import { FontAwesomeIcon as FA } from "@fortawesome/react-fontawesome"
// import styled from "styled-components";

export default () => (
  <CarouselStyled className="flush_left">
    {typeof window === "object" && (
      <CarouselProvider
        visibleSlides={Math.round(window.innerWidth - 300) / 200}
        totalSlides={9}
        step={Math.round(window.innerWidth - 300) / 200}
        naturalSlideWidth={600}
        naturalSlideHeight={600}
      >
        <Slider className={prcStyles.slider}>
          <Slide index={0}>
            <ImageDiv src="/photos/aboutus/desk-paul.jpg" />
          </Slide>
          <Slide index={5}>
            <ImageDiv src="/photos/aboutus/aboutus.jpg" />
          </Slide>
          <Slide index={3}>
            <ImageDiv src="/photos/aboutus/about-paul-rocks.jpg" />
          </Slide>
          <Slide index={2}>
            <ImageDiv src="/photos/me/via-ferrata.jpg" />
          </Slide>
          <Slide index={1}>
            <ImageDiv src="/photos/me/hg-crestline.jpg" />
          </Slide>
          <Slide index={4}>
            <ImageDiv src="/photos/aboutus/aboutus-utah-road.jpg" />
          </Slide>
          <Slide index={7}>
            <ImageDiv src="/photos/aboutus/city-samira-paul.jpg" />
          </Slide>
          <Slide index={6}>
            <ImageDiv src="/photos/me/ycheck.jpg" />
          </Slide>
          <Slide index={8}>
            <ImageDiv src="/photos/me/dog-colorado.jpg" />
          </Slide>
        </Slider>
        <div className="arrows">
          {/*<ButtonFirst>First</ButtonFirst>*/}
          <ButtonBack className="arrow arrow-left">
            <FA icon={faAngleLeft} className="" />
          </ButtonBack>
          <ButtonNext className="arrow arrow-right">
            <FA icon={faAngleRight} className="" />
          </ButtonNext>
          {/*<ButtonLast>Last</ButtonLast>*/}
          {/*<DotGroup dotNumbers />*/}
        </div>
        {/*<div className="links">*/}
        {/*  /!*<ButtonFirst>First</ButtonFirst>*!/*/}
        {/*  <ButtonBack className="link link-left">*/}
        {/*    <FA icon={faAngleLeftSolid} className="x85" /> Previous*/}
        {/*  </ButtonBack>*/}
        {/*  <ButtonNext className="link link-right">*/}
        {/*    Next <b>(fun photos!)</b> <FA icon={faAngleRightSolid} className="x85" />*/}
        {/*    <FA icon={faAngleRightSolid} className="x85" />*/}
        {/*  </ButtonNext>*/}
        {/*  /!*<ButtonLast>Last</ButtonLast>*!/*/}
        {/*  /!*<DotGroup dotNumbers />*!/*/}
        {/*</div>*/}
      </CarouselProvider>
    )}
  </CarouselStyled>
)
