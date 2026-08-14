import { Box, Flex, Stack } from '@chakra-ui/react';
import { useInView } from 'react-intersection-observer';
import Image from 'next/image';

import { ApplicantsSidebar, PageSection, PageText, PageMetadata } from '../../components/UI';

import { SIDEBAR_ABOUT_LINKS } from '../../constants';

import GrantManagementLogo from '../../../public/images/grant-management-logo.png';

const About = () => {
  // `threshold` option allows us to control the % of visibility required before triggering the Intersection Observer
  // https://react-intersection-observer.vercel.app/?path=/story/introduction--page#options
  const [ref, inView] = useInView({ threshold: 0.3 });
  const [ref2, inView2] = useInView({ threshold: 0.5, initialInView: false });

  return (
    <>
      <PageMetadata
        title='About'
        description="We provide support for open source projects that strengthen Ethereum's foundations, with a particular focus on builder tools, infrastructure, research and public goods."
      />

      <Box bg='white' position='relative' py={{ md: 12 }}>
        <Flex>
          <ApplicantsSidebar
            sidebarLinks={SIDEBAR_ABOUT_LINKS}
            sectionsInView={[inView, inView2]}
          />

          <Box w={{ lg: '70%' }} px={{ md: 20 }} pr={{ lg: 12 }}>
            <Stack spacing={10}>
              <section id='overview' ref={ref}>
                <PageSection mb={6}>Overview</PageSection>
                <Stack spacing={6}>
                  <PageText>
                    ESP is an ecosystem development cluster within the EF focused on strengthening
                    Ethereum&apos;s foundations, supporting teams across the ecosystem, and enabling
                    future builders. The work we support is free, open-source, non-commercial, and
                    designed to create positive sum outcomes for the community.
                  </PageText>
                  <PageText>Learn more about our work below!</PageText>
                </Stack>
              </section>

              <section id='grant-management' ref={ref2}>
                <Stack
                  spacing={6}
                  mt={8}
                  bgGradient='linear(to-br, brand.whoWeSupport.bgGradient.start 0%, brand.whoWeSupport.bgGradient.end 100%)'
                  p={12}
                  borderRadius='10px'
                >
                  <Image
                    src={GrantManagementLogo}
                    alt='Grant Management'
                    height={100}
                    objectFit='contain'
                  />
                  <PageSection>Grant Management</PageSection>
                  <PageText>
                    The Grant Management team focuses on allocating resources to the projects and
                    initiatives that are most critical to Ethereum&apos;s resilience and usability.
                  </PageText>
                  <PageText>
                    This involves coordinating grant-making across EF teams to ensure that support
                    is aligned and impactful. In addition, we support grantees throughout their
                    journey by offering guidance, fostering connections across the ecosystem, and
                    drawing insights from outcomes to guide future efforts.
                  </PageText>
                </Stack>
              </section>
            </Stack>
          </Box>
        </Flex>
      </Box>
    </>
  );
};

export default About;
