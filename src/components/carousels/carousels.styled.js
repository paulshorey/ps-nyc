import styled from "styled-components"

export const ImageDivStyled = styled.div`
  position: relative;
  width: 100%;
  height: 100%;
  @media (max-width: 1299px) {
    height: 90%;
  }
  @media (max-width: 999px) {
    height: 78%;
  }
  img {
    width: 100%;
  }
  &.ImageWithZoom {
    div {
      width: 100%;
      height: 100%;
      background-position: center;
    }
  }
`

export const CarouselStyled = styled.div`
  margin: 0 -2rem;
  padding-right: 2rem;
  overflow: hidden;
  .carousel {
    position: relative;
    li.carousel__slide {
      border-radius: 2px;
      overflow: hidden;
      > div {
        width: 98%;
        height: 98%;
      }
    }
    img.carousel__image {
    }
    .arrows {
      position: absolute;
      height: 100%;
      width: calc(100% + 4rem);
      left: -2rem;
      top: 0;
      pointer-events: none;
      .arrow {
        background: none;
        pointer-events: all;
        position: absolute;
        border-radius: 1.25rem;
        width: 2.5rem;
        height: 2.5rem;
        top: calc(45% - 1.25rem);
        font-size: 2.5rem;
        line-height: 2.6rem;
        color: orange;
        border: none;
        outline: none;
        svg {
          position: relative;
          top: -0.1rem;
        }
        &.arrow-right {
          right: 0;
          svg {
            right: -0.075rem;
          }
        }
        &.arrow-left {
          svg {
            left: -0.075rem;
          }
        }
        &[disabled] {
          opacity: 0.25;
          cursor: default;
        }
      }
    }
    .links {
      margin-top: 0.25rem;
      position: relative;
      .link {
        font-size: 0.9rem;
        border: none;
        color: var(--color-accent-dark);
        background: none;
        padding: 0;
        margin: 0 0.75rem 0 0;
        cursor: pointer;
        text-decoration: underline;
        &.link-right {
          position: absolute;
          right: 0;
        }
        &[disabled] {
          opacity: 0;
          visibility: hidden;
        }
      }
    }
  }
  &.flush_left {
    .carousel {
      .arrows {
        width: calc(100% + 2rem);
        left: 0;
      }
    }
  }
`
