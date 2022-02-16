import React from 'react'
import { MDBFooter, MDBContainer, MDBRow, MDBCol } from 'mdb-react-ui-kit';

export default function Footer() {
    return (
        <MDBFooter bgColor='primary' className='text-white text-center text-lg-left'>
        <MDBContainer className='p-4'>
          <MDBRow>
            <MDBCol lg='4' md='12' className='mb-4 mb-md-0'>
              <h5 className='text-uppercase'>nguyen huu trong</h5>
              <p><i className="ti-location-pin "></i>Address: Tay Thanh Ward, Tan Phu District, Ho Chi Minh City</p>
              <p><i className="ti-mobile "></i>Phone: 0981414329</p>
              <p><i className="ti-email "></i>Email: nguyentronger98@mail.com</p>
            </MDBCol>
  
            <MDBCol lg='4' md='6' className='mb-4 mb-md-0'>
              <h5 className='text-uppercase'>Dang Thi Thanh Ly</h5>
              <p><i className="ti-location-pin "></i>Address: Tay Thanh Ward, Tan Phu District, Ho Chi Minh City</p>
              <p><i className="ti-mobile "></i>Phone: 0358350584</p>
              <p><i className="ti-email "></i>Email: lydang323@gmail.com</p>
            </MDBCol>
  
            <MDBCol lg='4' md='6' className='mb-4 mb-md-0'>
            <h5 className='text-uppercase'>Lu Hoang Hieu</h5>
              <p><i className="ti-location-pin "></i>Address: Tay Thanh Ward, Tan Phu District, Ho Chi Minh City</p>
              <p><i className="ti-mobile "></i>Phone: 0975929906</p>
              <p><i className="ti-email "></i>Email: luhoanghieu@gmail.com</p>
            </MDBCol>
          </MDBRow>
        </MDBContainer>
      </MDBFooter>
    )
}
